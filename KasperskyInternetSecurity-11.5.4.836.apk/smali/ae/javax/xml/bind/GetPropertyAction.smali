.class final Lae/javax/xml/bind/GetPropertyAction;
.super Ljava/lang/Object;
.source "GetPropertyAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lae/javax/xml/bind/GetPropertyAction;->propertyName:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lae/javax/xml/bind/GetPropertyAction;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lae/javax/xml/bind/GetPropertyAction;->propertyName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
