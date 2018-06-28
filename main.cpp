#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QIcon>

#include <QStringList>
QString getNamedArgument(QStringList args, QString name, QString defaultName)
{
    int index = args.indexOf(name);
    return (index != -1) ? args[index + 1] : QString(defaultName);
}

QString getNamedArgument(QStringList args, QString name)
{
    return getNamedArgument(args, name, "");
}

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    app.setWindowIcon(QIcon(":/icons/32x32/cool-retro-term.png"));
    QQmlApplicationEngine engine;

    QStringList cmdList;
    cmdList  << "TEST";
    QVariant command(cmdList.empty() ? QVariant() : cmdList[0]);


    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
