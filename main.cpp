#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "Vehicle.h"
#include "Telltale.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    Vehicle vehicle;

    Telltale telltale;

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("vehicle", &vehicle);

    engine.rootContext()->setContextProperty("telltale",&telltale);

    engine.loadFromModule("AutomotiveDashboard", "Main");

    return app.exec();
}