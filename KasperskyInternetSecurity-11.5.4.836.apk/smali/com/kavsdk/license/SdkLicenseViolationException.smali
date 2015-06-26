.class public Lcom/kavsdk/license/SdkLicenseViolationException;
.super Lcom/kavsdk/license/SdkLicenseException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "License violation"

    invoke-direct {p0, v0}, Lcom/kavsdk/license/SdkLicenseException;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/kavsdk/license/SdkLicenseException;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method
