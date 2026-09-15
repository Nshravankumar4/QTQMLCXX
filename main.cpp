#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "Vehicle.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    Vehicle vehicle;

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("vehicle", &vehicle);

    engine.loadFromModule("AutomotiveDashboard", "Main");

    return app.exec();
}