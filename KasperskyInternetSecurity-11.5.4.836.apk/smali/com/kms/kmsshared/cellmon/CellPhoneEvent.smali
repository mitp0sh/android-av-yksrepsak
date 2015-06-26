.class public abstract Lcom/kms/kmsshared/cellmon/CellPhoneEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HANDLED:I = 0x1

.field public static final NOT_HANDLED:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mAction:I

.field protected mBlocked:Z

.field public mMissedEvent:Z

.field public mPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract block(Z)V
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mBlocked:Z

    return v0
.end method

.method public isHandled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 19
    iget v1, p0, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mAction:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHandled()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mAction:I

    .line 31
    return-void
.end method
