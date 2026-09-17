#ifndef DASHBOARD_H
#define DASHBOARD_H

#include <QObject>
#include <QString>
#include <QStringList>
#include <QTimer>

class Dashboard : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int speed READ speed WRITE setSpeed NOTIFY speedChanged)
    Q_PROPERTY(int rpm READ rpm WRITE setRpm NOTIFY rpmChanged)
    Q_PROPERTY(QString gear READ gear NOTIFY gearChanged)

public:
    explicit Dashboard(QObject *parent = nullptr);

    int speed() const;
    int rpm() const;
    QString gear() const;

    void setSpeed(int speed);
    void setRpm(int rpm);

public slots:
    void requestIncreaseSpeed();
    void requestDecreaseSpeed();
    void requestIncreaseRpm();
    void requestDecreaseRpm();
    void requestNextGear();
    void onEngineTick();

signals:
    void speedChanged(int speed);
    void rpmChanged(int rpm);
    void gearChanged(const QString &gear);

private:
    int m_speed;
    int m_rpm;
    int m_gearIndex;
    QStringList m_gears;
    QTimer *m_engineTimer;
};

#endif
