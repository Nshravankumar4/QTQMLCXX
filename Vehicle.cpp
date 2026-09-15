#include "Vehicle.h"

Vehicle::Vehicle(QObject *parent)
    : QObject(parent)
{
}

int Vehicle::speed() const
{
    return m_speed;
}

void Vehicle::setSpeed(int value)
{
    if (m_speed == value)
        return;

    m_speed = value;

    emit speedChanged();
}

void Vehicle::increaseSpeed()
{
    if(m_speed < 250){
        setSpeed(m_speed+1);
    }
}

void Vehicle::decreaseSpeed()
{
    if (m_speed > 0){
        setSpeed(m_speed - 1);
    }
}