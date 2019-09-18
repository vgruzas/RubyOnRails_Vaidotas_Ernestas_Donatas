//Vaidotas Gruzas PI17A
#include <iostream>
using namespace std;
int main()
{
    int N;//masyvo kieks
    cout<<"Iveskite masyvo elementu kieki: "<<endl;
    cin>>N;
    int mas[N], ma, mi, maxs=0, mins=0;//kintamieji
    cout<<"Iveskite masyvo elementus: ";
    for(int i=0; i<N; i++)
    {
        cin>>mas[i];
        ma=mas[0];
        mi=mas[0];
    }
    for(int i=0; i<N; i++)
    {
        if(ma<=mas[i]) ma=mas[i];
        if(mi>=mas[i]) mi=mas[i];
    }
    cout<<"A) min: "<<mi<<", max: "<<ma<<endl;
    for(int i=0; i<N; i++)
    {
        if(ma==mas[i]) maxs++;
        if(mi==mas[i]) mins++;
    }
    cout<<"B) min: "<<mins<<", max: "<<maxs<<endl;
    cout<<"C) Masyvo elementai be didziausiu ir maziausiu reiksmiu :"<<endl;
    int n=0;
    for(int i=0; i<N; i++)
    {
        if(ma>mas[i]&&mi<mas[i])
        {
            mas[n]=mas[i];
            n++;
        }
    }
    for(int i=n; i<N; i++)
    {
        mas[i]=0;
    }
    N=n;
    for(int i=0; i<N; i++)
    {
        cout<<mas[i]<<endl;
    }
    cout<<endl;
    return 0;
}
