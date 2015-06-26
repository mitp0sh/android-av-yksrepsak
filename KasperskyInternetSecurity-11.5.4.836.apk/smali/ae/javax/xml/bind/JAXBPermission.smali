.class public final Lae/javax/xml/bind/JAXBPermission;
.super Ljava/security/BasicPermission;
.source "JAXBPermission.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 106
    return-void
.end method
