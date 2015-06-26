.class public Lae/javax/xml/bind/MarshalException;
.super Lae/javax/xml/bind/JAXBException;
.source "MarshalException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0, v0}, Lae/javax/xml/bind/MarshalException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lae/javax/xml/bind/MarshalException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
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
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lae/javax/xml/bind/MarshalException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0, v0, p1}, Lae/javax/xml/bind/MarshalException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method
