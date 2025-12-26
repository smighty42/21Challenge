
module challenge::day_02 {
    #[test_only]
    use std::unit_test::assert_eq;

    public fun sum(a: u64, b: u64): u64 // public fun modülün dışında da çağırabilmemizi sağlar
    {
        a + b  // move dilinde return son satırdır
    }

    #[test]
    fun test_sum() // fun sadece mödül içinde geçerli 
    {
        let result_sum = sum(1,2); // let ile değişken tanımlıyoruz move otomatik olarak
                                              // tipini belirliyor fonkisyonu yazunca 
        assert_eq!(result_sum, 3); 
       
         // result_sum 3'e eşit mi diye bakıyor değilse hata verir 
    }

}

