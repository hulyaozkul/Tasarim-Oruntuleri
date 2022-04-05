#include <string>
#include <iostream>
#include <list>
class Resource
{
    int value;
public:
    Resource()
    {
        value = 0;
    }
    void reset()
    {
        value = 0;
    }
    int getValue()
    {
        return value;
    }
    void setValue(int number)
    {
        value = number;
    }
};
/*
Bu sınıfın bir singleton olduğuna dikkat edin.*/
class ObjectPool
{
private:
    std::list<Resource*> resources;

    static ObjectPool* instance;
    ObjectPool() {}
public:
    /**

* Sınıf örneğine erişmek için statik yöntem.
* Singleton tasarım modelinin bir parçası.
*
* @return ObjectPool örneği.
     */
    static ObjectPool* getInstance()
    {
        if (instance == 0)
        {
            instance = new ObjectPool;
        }
        return instance;
    }
    /**
    Kaynak örneğini döndürür.
*
* Tüm kaynaklar varsa yeni kaynak oluşturulacaktır.
* istek sırasında kullanılmıştır.
*
* @return Kaynak örneği.
     */
    Resource* getResource()
    {
        if (resources.empty())
        {
            std::cout << "Creating new." << std::endl;
            return new Resource;
        }
        else
        {
            std::cout << "Reusing existing." << std::endl;
            Resource* resource = resources.front();
            resources.pop_front();
            return resource;
        }
    }
    /**

* Kaynağı havuza geri döndürün.
*
* Kaynak yeniden başlatılmalıdır
* başkasından önce varsayılan ayarlar
* kullanmaya çalışır.
     *
     * @param object Resource instance.
     * @return void
     */
    void returnResource(Resource* object)
    {
        object->reset();
        resources.push_back(object);
    }
};
ObjectPool* ObjectPool::instance = 0;
int main()
{
    ObjectPool* pool = ObjectPool::getInstance();
    Resource* one;
    Resource* two;
    /*
Kaynaklar oluşturulacaksa. */
    one = pool->getResource();
    one->setValue(10);
    std::cout << "one = " << one->getValue() << " [" << one << "]" << std::endl;
    two = pool->getResource();
    two->setValue(20);
    std::cout << "two = " << two->getValue() << " [" << two << "]" << std::endl;
    pool->returnResource(one);
    pool->returnResource(two);
    /*
Kaynaklar yeniden kullanılacaktır.
* Her iki kaynağın değerinin sıfıra sıfırlandığına dikkat edin.
     */
    one = pool->getResource();
    std::cout << "one = " << one->getValue() << " [" << one << "]" << std::endl;
    two = pool->getResource();
    std::cout << "two = " << two->getValue() << " [" << two << "]" << std::endl;

    return 0;
}