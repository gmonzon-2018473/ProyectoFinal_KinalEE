package modelo;

 

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

 

public class ProductoDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    public List listar(){
        String sql = "select * from Producto";
        List<Producto> listaProducto = new ArrayList<>();
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Producto pro = new Producto();
                pro.setCodigoProducto(rs.getInt(1));
                pro.setNombreProducto(rs.getString(2));
                pro.setPrecio(rs.getDouble(3));
                pro.setStock(rs.getInt(4));
                pro.setEstado(rs.getString(5));
                listaProducto.add(pro);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
     return listaProducto;
    }
    
    public int agregar(Producto prod){
        String sql = "insert into Producto(nombreProducto, precio, stock, estado) values(?, ?, ?, ?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, prod.getNombreProducto());
            ps.setDouble(2, prod.getPrecio());
            ps.setInt(3, prod.getStock());
            ps.setString(4, prod.getEstado());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("No se pudo agregar el registro");
        }
            
        return resp;
    }
    
    public Producto listarCodigoProducto(int id){
        Producto prod = new Producto();
        String sql = "select * from producto where codigoProducto = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                prod.setNombreProducto(rs.getString(2));
                prod.setPrecio(rs.getDouble(3));
                prod.setStock(rs.getInt(4));
                prod.setEstado(rs.getString(5)); 
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return prod;
    }
    
    public int actualizar(Producto prod){ 
        String sql = "update producto set nombreProducto = ?, precio = ?, stock = ?, estado = ? where codigoProducto = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, prod.getNombreProducto());
            ps.setDouble(2, prod.getPrecio());
            ps.setInt(3, prod.getStock());
            ps.setString(4, prod.getEstado());
            ps.setInt(5, prod.getCodigoProducto());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return resp;
    
    }
    
    public void eliminar(int id){
        String sql = "delete from producto where codigoProducto ="+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        
        }catch(Exception e){
            e.printStackTrace();
        }
    
    }
}
