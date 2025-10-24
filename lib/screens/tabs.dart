import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:meals/data/dummy_data.dart';
//import 'package:meals/screens/categories.dart';
import 'package:meals/screens/categories.dart';
import 'package:meals/screens/filters.dart';
import 'package:meals/screens/meals.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/main_drawer.dart';
import 'package:meals/providers/meals_provider.dart';


const kInitialFilters ={
    Filter.glutenFree: false,
    Filter.lactoseFree: false,
    Filter.vegetarianFree: false,
    Filter.vegan: false,
  };

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() {
    return _TabsScreenState();
  } 
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  final List<Meal> _favoriteMeals = [];
   Map<Filter,bool> _selectFilters =kInitialFilters;
 


  void _showInfoMesssage(String message){
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)));
    
  }

  void _toggleMealFavoriteStatus(Meal meal){
    final isExisting = _favoriteMeals.contains(meal);
    
    if(isExisting){
      setState(() {
        _favoriteMeals.remove(meal);
      });
      _showInfoMesssage('Meals is no longer a favourite.');
    } else{
      setState(() {
        _favoriteMeals.add(meal);
       _showInfoMesssage('Marked as a favourite!');
      });
      

    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setscreen(String identifier)async{
          Navigator.of(context).pop();
    if(identifier == 'filters'){
      final result = 
      await Navigator.of(context).push<Map<Filter,bool>>(
        MaterialPageRoute(
          builder: (ctx)=>  FiltersScreen(
            currentFilters: _selectFilters,
          ),
          ),);
          setState(() {
           _selectFilters = result ?? kInitialFilters;

          });

    }
 
  }

  @override
  Widget build(BuildContext context) {
    final meals  =   ref.watch(mealsProvider);
    final availableMeals = meals.where((meal){

      if(_selectFilters[Filter.glutenFree]! && !meal.isGlutenFree){
        return false;
      }
       if(_selectFilters[Filter.lactoseFree]! && !meal.isLactoseFree){
        return false;
      }
       if(_selectFilters[Filter.vegetarianFree]! && !meal.isVeganFree){
        return false;
      }
      if(_selectFilters[Filter.vegan]! && !meal.isVegetarianFree){
        return false;
      }
      return true;
    }).toList();


    Widget activePage = CategoriesScreen(
      onToggleFavorite: _toggleMealFavoriteStatus,
      availableMeals: availableMeals,
    );

    var activePageTitle = 'Categories';

    if(_selectedPageIndex == 1){
      activePage =  MealsScreen(
        meals: [],onToggleFavorite:_toggleMealFavoriteStatus ,);
        activePageTitle = 'Your Favorites';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      drawer: MainDrawer(onSelectScreen: _setscreen,),


      body:activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex ,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}