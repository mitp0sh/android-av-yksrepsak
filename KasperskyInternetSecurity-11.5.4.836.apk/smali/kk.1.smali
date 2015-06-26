.class public final Lkk;
.super Lrv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/kms/UiEventType;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lrv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lwd;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/kms/UiEventType;->SettingClicked:Lcom/kms/UiEventType;

    invoke-virtual {p0, v0}, Lkk;->a(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0}, Lkk;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwd;

    return-object v0
.end method

.method public final b()Lcom/kms/antivirus/AntivirusScanType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/kms/UiEventType;->TypedScanRequested:Lcom/kms/UiEventType;

    invoke-virtual {p0, v0}, Lkk;->a(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lkk;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusScanType;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/kms/UiEventType;->OpenHelp:Lcom/kms/UiEventType;

    invoke-virtual {p0, v0}, Lkk;->a(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0}, Lkk;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/kms/UiEventType;->OpenSafeBrowser:Lcom/kms/UiEventType;

    invoke-virtual {p0, v0}, Lkk;->a(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Lkk;->o()Ljava/lang/Object;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/kms/UiEventType;->ShowInternetConnectionRequiredDialog:Lcom/kms/UiEventType;

    invoke-virtual {p0, v0}, Lkk;->a(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lkk;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
