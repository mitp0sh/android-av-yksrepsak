.class Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep$UcpReadyCheckWorkThreadLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LnX;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep$UcpReadyCheckWorkThreadLoader;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;B)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep$UcpReadyCheckWorkThreadLoader;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Lwy;->a()Z

    .line 177
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    invoke-virtual {v0}, Lsj;->r()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->b(Ljava/lang/String;)V

    .line 182
    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep$UcpReadyCheckWorkThreadLoader;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->c(Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;)V

    .line 192
    return-void
.end method
