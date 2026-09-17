#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "Dashboard.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    Dashboard dashboardBackend;
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("dashboardBackend", &dashboardBackend);
    engine.loadFromModule("AutomotiveDashboard", "Main");
    return app.exec();
}
