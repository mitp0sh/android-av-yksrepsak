.class final enum Lcom/kms/antivirus/AntivirusEventType$9;
.super Lcom/kms/antivirus/AntivirusEventType;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kms/antivirus/AntivirusEventType;-><init>(Ljava/lang/String;ILcom/kms/antivirus/AntivirusEventType$1;)V

    return-void
.end method


# virtual methods
.method protected final checkData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 144
    instance-of v0, p1, Lmn;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AntivirusState must be provided for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kms/antivirus/AntivirusEventType$9;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    return-void
.end method
