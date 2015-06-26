.class public abstract Lcom/kavsdk/securestorage/database/ICancellationSignal$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kavsdk/securestorage/database/ICancellationSignal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.kavsdk.securestorage.database.ICancellationSignal"

    invoke-virtual {p0, p0, v0}, Lcom/kavsdk/securestorage/database/ICancellationSignal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method
