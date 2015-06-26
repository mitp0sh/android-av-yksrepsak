.class public final Lem;
.super Len;
.source "SourceFile"


# instance fields
.field private a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/antitheft/remoting/CommandManager;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Len;-><init>()V

    .line 14
    iput-object p1, p0, Lem;->a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lee;)V
    .locals 3

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 33
    :goto_0
    return-void

    .line 23
    :cond_0
    :try_start_0
    iget-object v0, p0, Lem;->a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    check-cast p1, Lek;

    invoke-virtual {v0, p1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a(Lek;)V
    :try_end_0
    .catch Lcom/kaspersky/kts/antitheft/WrongProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/kaspersky/kts/antitheft/ConnectionProblemException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const-string v1, "KMS-ANTI-THIEF"

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/WrongProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;

    const-string v2, "Wrong protocol"

    invoke-direct {v1, v2, v0}, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 27
    :catch_1
    move-exception v0

    .line 28
    const-string v1, "KMS-ANTI-THIEF"

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v1, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;

    const-string v2, "Connection problem"

    invoke-direct {v1, v2, v0}, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 30
    :catch_2
    move-exception v0

    .line 31
    const-string v1, "KMS-ANTI-THIEF"

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v1, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;

    const-string v2, "Error connecting server"

    invoke-direct {v1, v2, v0}, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
