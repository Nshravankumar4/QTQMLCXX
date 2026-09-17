#include "Dashboard.h"

Dashboard::Dashboard(QObject *parent)
    : QObject(parent), m_speed(0), m_rpm(0), m_gearIndex(0)
{
    m_gears << "P" << "R" << "N" << "D";

    m_engineTimer = new QTimer(this);
    connect(m_engineTimer, &QTimer::timeout, this, &Dashboard::onEngineTick);
    m_engineTimer->start(1000);
}

int Dashboard::speed() const { return m_speed; }
int Dashboard::rpm() const { return m_rpm; }
QString Dashboard::gear() const { return m_gears[m_gearIndex]; }

void Dashboard::setSpeed(int speed) {
    if (m_speed != speed) {
        m_speed = speed;
        emit speedChanged(m_speed);
    }
}

void Dashboard::setRpm(int rpm) {
    if (m_rpm != rpm) {
        m_rpm = rpm;
        emit rpmChanged(m_rpm);
    }
}

void Dashboard::requestIncreaseSpeed() {
    if (m_speed < 240) setSpeed(m_speed + 5);
}

void Dashboard::requestDecreaseSpeed() {
    if (m_speed > 0) setSpeed(m_speed - 5);
}

void Dashboard::requestIncreaseRpm() {
    if (m_rpm < 8000) setRpm(m_rpm + 500);
}

void Dashboard::requestDecreaseRpm() {
    if (m_rpm > 0) setRpm(m_rpm - 500);
}

void Dashboard::requestNextGear() {
    m_gearIndex = (m_gearIndex + 1) % m_gears.size();
    emit gearChanged(m_gears[m_gearIndex]);
}

void Dashboard::onEngineTick() {
    if (gear() == "D" && m_speed < 10) {
        setSpeed(m_speed + 1);
    }
}
