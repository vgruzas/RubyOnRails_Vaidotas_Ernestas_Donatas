//Vaidotas Gruzas PI17A
#include <iostream>
using namespace std;
int main()
{
    int x, X=999;//kintamieji
    cout<<"Iveskite dvimacio masyvo eiluciu skaiciu: "<<endl;
    cin>>x;
    int A[x][x];
    char B[x][x];//konvertuotas masyvas
    cout<<"Is eiles, nuo virsutinio desiniojo kampo ivardinkite dvimacio masyvo elementus: "<<endl;
    for(int i=0; i<x; i++)
    {
        for(int j=0; j<x; j++)
        {
            cin>>A[i][j];
        }
    }
    for(int i=0; i<x; i++)
    {
        if(X>A[i][i]) X=A[i][i];
    }
    cout<<"Konvertuotas masyvas."<<endl;
    for(int i=0; i<x; i++)
    {
        for(int j=0; j<x; j++)
        {
            if(A[i][j]>X) B[i][j]='D';
                else if(A[i][j]<X) B[i][j]='M';
                    else B[i][j]='L';
            cout<<B[i][j]<<" ";
        }
        cout<<endl;
    }
    return 0;
}
