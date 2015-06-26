.class public Lae/javax/xml/bind/PropertyException;
.super Lae/javax/xml/bind/JAXBException;
.source "PropertyException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 122
    const-string v0, "PropertyException.NameValue"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lae/javax/xml/bind/Messages;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method
