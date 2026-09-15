#include "Telltale.h"

Telltale::Telltale(QObject *parent)
    : QObject(parent)
{
}

void Telltale::leftIndicator() {
    emit selectLefInd();
}
void Telltale::rightIndicater() {
    emit selectRightInd();
}