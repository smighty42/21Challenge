
module challenge::day_05 { // std::vector tanımlı zaten gerek yok
      #[test_only]
    public struct Habit has copy, drop {
        name: vector<u8>,
        completed: bool,
    }

    public struct HabitList has drop {
        habits: vector<Habit>,
    }

    public fun new_habit(name: vector<u8>): Habit {
        Habit {
            name,
            completed: false,
        }
    }

    public fun empty_list(): HabitList {
        HabitList {
            habits: vector::empty(), 
        }
    }

    public fun add_habit(list: &mut HabitList, habit: Habit) {
        vector::push_back(&mut list.habits, habit); 
    }

    public fun complete_habit(list: &mut HabitList, index: u64 ) //mut = mutable reference //değiştirilebilir
    {
        let len;
        len = vector::length(&list.habits);
        if(index < len)
        {
            let habit = vector::borrow_mut(&mut list.habits,index);
            //borrow_mut listenin içindeki o indexe gider ve istediğin öğeyi değiştirme yetkisi verir.
            habit.completed=true;
        }
    }


    #[test]
    fun test()
    {
        let mut liste = empty_list(); 
        let habit =new_habit(b"Kod Yaz");
        add_habit(&mut liste,habit);
        complete_habit(&mut liste,0);
        let habit_control = vector::borrow(&liste.habits,0);
        assert!(habit_control.completed == true,1);
    }
}

