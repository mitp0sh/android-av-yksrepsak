.class public final LmD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LmA;


# instance fields
.field private final a:Lrx;


# direct methods
.method public constructor <init>(Lrx;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, LmD;->a:Lrx;

    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, LmD;->a:Lrx;

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ScanStarted:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->newEvent()Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 17
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, LmD;->a:Lrx;

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ScanProgressCalculated:Lcom/kms/antivirus/AntivirusEventType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kms/antivirus/AntivirusEventType;->newEvent(Ljava/lang/Object;)Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 22
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, LmD;->a:Lrx;

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ScanStartedForFile:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1, p1}, Lcom/kms/antivirus/AntivirusEventType;->newEvent(Ljava/lang/Object;)Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 27
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, LmD;->a:Lrx;

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ScanVirusDetected:Lcom/kms/antivirus/AntivirusEventType;

    new-instance v2, Lmf;

    invoke-direct {v2, p1, p2}, Lmf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/kms/antivirus/AntivirusEventType;->newEvent(Ljava/lang/Object;)Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 46
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, LmD;->a:Lrx;

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ScanFinished:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->newEvent()Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 51
    return-void
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, LmD;->a:Lrx;

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ScanProgressChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kms/antivirus/AntivirusEventType;->newEvent(Ljava/lang/Object;)Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 36
    return-void
.end method

.method public final c(I)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, LmD;->a:Lrx;

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ScanObjectCountChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kms/antivirus/AntivirusEventType;->newEvent(Ljava/lang/Object;)Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 41
    return-void
.end method
