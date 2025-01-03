#include "MainWindow.h"

#include <QApplication>
#include <QFontDatabase>
#include <QFile>

void loadStyleSheet(const QString &filename) {
    QFile file(filename);
    file.open(QFile::ReadOnly | QFile::Text);
    qApp->setStyleSheet(file.readAll());
    file.close();
}

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);
    QFontDatabase::addApplicationFont(":/font/JetBrainsMono-VariableFont_wght.ttf");
    loadStyleSheet(":/conf/Styles.qss");

    MainWindow win;
    win.show();

    return app.exec();
}
