#ifndef TELLTALE_H
#define TELLTALE_H

#include<QObject>

class Telltale : public QObject {

    Q_OBJECT

public:
    explicit Telltale(QObject *parent = nullptr);
    int left() const;

signals:
    void selectLefInd();
    void selectRightInd();

public slots:
    void leftIndicator();
    void rightIndicater();

private:



};

#endif //TELLTALE_H