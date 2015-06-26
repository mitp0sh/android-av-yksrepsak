.class final enum Lcom/kaspersky/kts/gui/wizard/WizardType$3;
.super Lcom/kaspersky/kts/gui/wizard/WizardType;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kaspersky/kts/gui/wizard/WizardType;-><init>(Ljava/lang/String;IZLcom/kaspersky/kts/gui/wizard/WizardType$1;)V

    return-void
.end method


# virtual methods
.method final createSteps()LfX;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lgd;->d()LfX;

    move-result-object v0

    return-object v0
.end method
