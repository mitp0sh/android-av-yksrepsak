.class public Lae/javax/xml/bind/UnmarshalException;
.super Lae/javax/xml/bind/JAXBException;
.source "UnmarshalException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0, v0}, Lae/javax/xml/bind/UnmarshalException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lae/javax/xml/bind/UnmarshalException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lae/javax/xml/bind/UnmarshalException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0, v0, p1}, Lae/javax/xml/bind/UnmarshalException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    return-void
.end method
