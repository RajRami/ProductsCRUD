package productspringmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;
import productspringmvc.dao.ProductDao;
import productspringmvc.model.Product;

import java.util.List;

@Controller
public class ProductController {

    @Autowired
    private ProductDao productDao;

    @RequestMapping("/")
    public String home(Model m){
        List<Product> products = productDao.getAllProducts();
        m.addAttribute("products", products);
        m.addAttribute("title", "Home");
        return "index";
    }

    @RequestMapping("/add")
    public String addProduct(Model m){
        m.addAttribute("title", "Add Product");
        return "add_product";
    }

    @RequestMapping(value = "/submitForm", method = RequestMethod.POST)
    public String submitProduct(@ModelAttribute Product product){
        System.out.println(product);
        productDao.createProduct(product);
        return "redirect:/";
    }

    @RequestMapping("/delete/{id}")
    public String deleteProduct(@PathVariable("id") int id){
        productDao.deleteProduct(id);
        return "redirect:/";
    }

    @RequestMapping("/edit/{id}")
    public String editProduct(@PathVariable("id") int id, Model model){
        Product product = productDao.getProduct(id);
        model.addAttribute("product", product);
        model.addAttribute("title", "Edit");
        return "edit_product";
    }
}
