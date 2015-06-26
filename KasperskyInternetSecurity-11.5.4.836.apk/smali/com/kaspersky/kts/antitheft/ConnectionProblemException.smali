.class public Lcom/kaspersky/kts/antitheft/ConnectionProblemException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mServiceIsUnderMaintenance:Z

.field private mStatusLine:Lorg/apache/http/StatusLine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/StatusLine;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;->mStatusLine:Lorg/apache/http/StatusLine;

    .line 29
    if-eqz p1, :cond_1

    .line 30
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 31
    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_1

    .line 32
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;->mServiceIsUnderMaintenance:Z

    .line 34
    :cond_1
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 37
    iput-boolean p1, p0, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;->mServiceIsUnderMaintenance:Z

    .line 38
    return-void
.end method


# virtual methods
.method public getStatusLine()Lorg/apache/http/StatusLine;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;->mStatusLine:Lorg/apache/http/StatusLine;

    return-object v0
.end method

.method public isServiceUnderMaintenance()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;->mServiceIsUnderMaintenance:Z

    return v0
.end method
