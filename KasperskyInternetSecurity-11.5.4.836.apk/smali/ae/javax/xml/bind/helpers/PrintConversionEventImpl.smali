.class public Lae/javax/xml/bind/helpers/PrintConversionEventImpl;
.super Lae/javax/xml/bind/helpers/ValidationEventImpl;
.source "PrintConversionEventImpl.java"

# interfaces
.implements Lae/javax/xml/bind/PrintConversionEvent;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;)V
    .locals 0
    .param p1, "_severity"    # I
    .param p2, "_message"    # Ljava/lang/String;
    .param p3, "_locator"    # Lae/javax/xml/bind/ValidationEventLocator;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;)V

    .line 80
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "_severity"    # I
    .param p2, "_message"    # Ljava/lang/String;
    .param p3, "_locator"    # Lae/javax/xml/bind/ValidationEventLocator;
    .param p4, "_linkedException"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method
