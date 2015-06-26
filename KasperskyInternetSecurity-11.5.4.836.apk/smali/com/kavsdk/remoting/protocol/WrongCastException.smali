.class public Lcom/kavsdk/remoting/protocol/WrongCastException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "Wrong cast exception"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method
