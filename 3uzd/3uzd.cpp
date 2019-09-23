#include <iostream>
#include <cmath>
using namespace std;
int main ()
{
    double a, b, c, did, p, S;//kintamieji
    cout<<"Iveskite tris krastines"<<endl;
    cin>>a>>b>>c;
    p=(a+b+c)/2;//pusperimetris
    S=sqrt(p*(p-a)*(p-b)*(p-c));//herono formule
    //didziausios krastines radimas
    if(a>b&&a>c) did=a;
        else if (b>a&&b>c) did=b;
            else if(c>a&&c>b) did=c;
                else did=0;
    //tikrinimas ar trikampis sudaromas, kokia jo rusis, koks jo plotas
    if(did==a) {
                    if (did<b+c&&b==c) cout<<"trikampis lygiasonis, jo plotas: "<<S<<endl;
                        else if (did<b+c&&b!=c) cout<<"trikampis ivairiakrastis, jo plotas: "<<S<<endl;
                            else cout<<"trikampio nebus"<<endl;
               }
        else if(did==b){
                            if (did<a+c&&a==c) cout<<"trikampis lygiasonis, jo plotas: "<<S<<endl;
                                else if (did<a+c&&a!=c) cout<<"trikampis ivairiakrastis, jos plotas: "<<S<<endl;
                                    else cout<<"trikampio nebus"<<endl;
                       }
            else if (did==c) {
                                if (did<b+a&&b==a) cout<<"trikampis lygiasonis, jo plotas: "<<S<<endl;
                                    else if (did<b+a&&b!=a) cout<<"trikampis ivairiakrastis, jo plotas: "<<S<<endl;
                                        else cout<<"trikampio nebus"<<endl;
                             }
                else cout<<"trikampis lygiakrastis, jo plotas: "<<S<<endl;
    //programos pabaiga
    return 0;
}
