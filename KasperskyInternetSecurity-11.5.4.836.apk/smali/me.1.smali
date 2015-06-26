.class public final Lme;
.super Lrv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/kms/antivirus/AntivirusEventType;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lrv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/kms/antivirus/AntivirusEventType;->ScanObjectCountChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {p0, v0}, Lme;->a(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Lme;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/kms/antivirus/AntivirusEventType;->ScanProgressChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {p0, v0}, Lme;->a(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0}, Lme;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/kms/antivirus/AntivirusEventType;->ScanProgressCalculated:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {p0, v0}, Lme;->a(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0}, Lme;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/kms/antivirus/AntivirusEventType;->ScanNewObjectAppeared:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {p0, v0}, Lme;->a(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0}, Lme;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final e()Lmn;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/kms/antivirus/AntivirusEventType;->ServiceStateChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {p0, v0}, Lme;->a(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Lme;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmn;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateProgressChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {p0, v0}, Lme;->a(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lme;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final g()Lcom/kms/antivirus/AntivirusUpdateReason;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateStarted:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {p0, v0}, Lme;->a(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Lme;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusUpdateReason;

    return-object v0
.end method

.method public final h()Lcom/kms/antivirus/AntivirusUpdateError;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateFailed:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {p0, v0}, Lme;->a(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lme;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusUpdateError;

    return-object v0
.end method

.method public final i()Lmo;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateStateChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {p0, v0}, Lme;->a(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Lme;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmo;

    return-object v0
.end method

.method public final j()Lmf;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/kms/antivirus/AntivirusEventType;->ScanVirusDetected:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {p0, v0}, Lme;->a(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0}, Lme;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/kms/antivirus/AntivirusEventType;->ScanStartedForFile:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {p0, v0}, Lme;->a(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Lme;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lcom/kms/antivirus/MonitorMode;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/kms/antivirus/AntivirusEventType;->MonitorModeChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {p0, v0}, Lme;->a(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lme;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/MonitorMode;

    return-object v0
.end method
