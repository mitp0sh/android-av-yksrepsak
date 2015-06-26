.class public Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mOwnError:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;->mOwnError:I

    .line 13
    iput p1, p0, Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;->mOwnError:I

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;->mOwnError:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;->mOwnError:I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;->mOwnError:I

    .line 24
    return-void
.end method


# virtual methods
.method public getError()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;->mOwnError:I

    return v0
.end method
