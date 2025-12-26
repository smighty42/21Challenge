

module challenge::day_03 {

    public struct Habit has copy ,drop 
    //kopyalanabilir(copy) ve atılabilir yani silinebilir(drop)
    {
        habit_name: vector <u8>, //vector bir list u8 tipinde //alışkanlığın adı
        completed: bool, //yapıldı mı //bool=true,false
    }

    public fun new_habit(habit_name: vector<u8>):Habit //:Habit fonksiyonun çıktı türü Habit
    {
        Habit
        {
            habit_name, // alışkanlık adını dışarıdan alır 
            completed: false,// ve alışkanlık başlangıçta false çünkü yapılmadı daha
        }
    }

}
