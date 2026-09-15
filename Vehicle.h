#ifndef VEHICLE_H
#define VEHICLE_H

#include <QObject>

class Vehicle : public QObject
{
    Q_OBJECT

    Q_PROPERTY(int speed READ speed WRITE setSpeed NOTIFY speedChanged)

public:
    explicit Vehicle(QObject *parent = nullptr);

    int speed() const;
    void setSpeed(int value);

public slots:
    void increaseSpeed();
    void decreaseSpeed();

signals:
    void speedChanged();

private:
    int m_speed = 00;
};

#endif