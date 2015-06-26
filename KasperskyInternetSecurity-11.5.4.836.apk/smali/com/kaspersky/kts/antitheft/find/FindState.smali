.class public Lcom/kaspersky/kts/antitheft/find/FindState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private attempts:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttempts()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/kaspersky/kts/antitheft/find/FindState;->attempts:I

    return v0
.end method

.method public increaseAttempts()V
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/kaspersky/kts/antitheft/find/FindState;->attempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kaspersky/kts/antitheft/find/FindState;->attempts:I

    .line 19
    return-void
.end method

.method public setAttempts(I)V
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcom/kaspersky/kts/antitheft/find/FindState;->attempts:I

    .line 15
    return-void
.end method
