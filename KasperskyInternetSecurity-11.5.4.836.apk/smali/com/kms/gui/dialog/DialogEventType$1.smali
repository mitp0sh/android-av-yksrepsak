.class final enum Lcom/kms/gui/dialog/DialogEventType$1;
.super Lcom/kms/gui/dialog/DialogEventType;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kms/gui/dialog/DialogEventType;-><init>(Ljava/lang/String;ILcom/kms/gui/dialog/DialogEventType$1;)V

    return-void
.end method


# virtual methods
.method protected final checkData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 12
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dialog event data must be null or Bundle for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kms/gui/dialog/DialogEventType$1;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    return-void
.end method
