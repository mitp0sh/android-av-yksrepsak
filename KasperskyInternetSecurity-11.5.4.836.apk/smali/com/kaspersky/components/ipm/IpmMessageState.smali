.class public Lcom/kaspersky/components/ipm/IpmMessageState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mDeactivateNews:Z

.field private mNewsId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kaspersky/components/ipm/IpmMessageState;->mDeactivateNews:Z

    .line 30
    iput-object p2, p0, Lcom/kaspersky/components/ipm/IpmMessageState;->mNewsId:Ljava/lang/String;

    .line 31
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNewsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kaspersky/components/ipm/IpmMessageState;->mNewsId:Ljava/lang/String;

    return-object v0
.end method

.method public isDeactivateNews()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/kaspersky/components/ipm/IpmMessageState;->mDeactivateNews:Z

    return v0
.end method

.method setDeactivateNews(Z)V
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/kaspersky/components/ipm/IpmMessageState;->mDeactivateNews:Z

    .line 18
    return-void
.end method

.method setNewsId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/kaspersky/components/ipm/IpmMessageState;->mNewsId:Ljava/lang/String;

    .line 26
    return-void
.end method
