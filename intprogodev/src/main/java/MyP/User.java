/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MyP;





public class User {
    
    private String ad;
    private String soyad;
    private String ogrno;

    /**
     * @return the ad
     */
    public String getAd() {
        return ad;
    }

    /**
     * @param ad the ad to set
     */
    public void setAd(String ad) {
        this.ad = ad;
    }

    /**
     * @return the soyad
     */
    public String getSoyad() {
        return soyad;
    }

    /**
     * @param soyad the soyad to set
     */
    public void setSoyad(String soyad) {
        this.soyad = soyad;
    }

    /**
     * @return the ogrno
     */
    public String getogrno() {
        return ogrno;
    }

    /**
     * @param kullaniciadi the ogrno to set
     */
    public void setogrno(String kullaniciadi) {
        this.ogrno = kullaniciadi;
    }
    
    @Override
    public String toString(){
    return " Hoşgeldin"+ad;
    }
}
