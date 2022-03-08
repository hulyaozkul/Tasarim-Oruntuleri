#include <iostream>
#include <string>

using namespace std;

void gorevekle1(int x) { x = x + 1; }

void gorevekle2(int &x) { x = x + 1; }

void gorevekle3(int *x) { *x = *x + 1; } //Passing function arguments
class Point {
private:
    int x, y;
public:
    Point(int x1, int y1) {
        x = x1;
        y = y1;
    } // Copy constructor
    Point(const Point &p1) {
        x = p1.x;
        y = p1.y;
    }

    int getX() { return x; }

    int getY() { return y; }
};// Copy constructor
int adim(int x = 0, int y = 0, int z = 0) {

    return (x + y + z);
}//default parameters

class Robot //method overriding
{
public:
    virtual void Display() {
        cout << "Ben bir robotum. " << endl;
    }

    void Show() {
        cout << "Robotlari severim. " << endl;
    }
};//method overriding

class ParalelRobot : public Robot //method overriding
{
public:
    // Overriding method - new working of
    // base class's display method
    void Display() {
        cout << "Ben bir Paralel Robotum" << endl;
    }
};//method overriding

class Robot2 //abstract class
{
protected:
    int x;
public:
    virtual void fun() = 0;

    Robot2(int h) {
        x = h;
        cout << "Robot-urun uzakligi : "<<endl;
    }
};//abstract class

class MobilRobot : public Robot2 //abstract class
{
    int y;
public:
    MobilRobot(int h, int w) : Robot2(h) { y = w; }

    void fun() { cout << "x = " << x << ", y = " << y << '\n'; }
};//abstract class
int main() {

    int toplamAdim; //uninitialized
    int y = 5;//initialized

    ParalelRobot dr;//method overriding
    Robot &bs = dr;//method overriding
    bs.Display();//method overriding
    dr.Show(); //method overriding

    gorevekle1(y);
    gorevekle2(y);
    gorevekle3(&y);
    cout << "Toplam Gorev :" << y << endl; //Passing function arguments

    int tasks[]{1, 2, 3, 4, 5, 6, 7};
    for (auto &e: tasks) {
        cout << e << ". gorev" << endl;
    } //Range-based for loop
    cout<<"1. gorev icin gerekli robot sayisi = 3 "<<endl;

    int a = 10 , b=25;//initialized
    Point p1(a, b); // constructor
    Point p2 = p1;// Copy constructor
    Point p3(p1);// Copy constructor

    //constructor tarafından atanan değerlere erişim
    cout << "p1.x = " << p1.getX() << ", p1.y = " << p1.getY() << endl;
    cout << "Toplam Adim : " << adim(p1.getX(), p1.getY()) << endl;
    cout << "p2.x = " << p2.getX() << ", p2.y = " << p2.getY() << endl;
    cout << "Toplam Adim : " << adim(p2.getX(), p2.getY()) << endl;
    cout << "p3.x = " << p3.getX() << ", p3.y = " << p3.getY() << endl;
    cout << "Toplam Adim : " << adim(p3.getX(), p3.getY()) << endl;

    cout<<"2. Gorev icin gerekli adim sayisi : "<<endl;
    toplamAdim = adim(10, 15);//default parameters
    cout << "Toplam Adim : " << toplamAdim << endl;




    cout<<"Robot 1"<<endl;
    MobilRobot d(4, 5);
    d.fun();
    cout<<"Robot 2"<<endl;
    Robot2 *ptr = new MobilRobot(6, 7);
    ptr->fun(); //abstract class
    return 0;
}
