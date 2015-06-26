.class Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$SimWatchControlsAvailabilityChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfJ;


# instance fields
.field private a:LfN;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-instance v0, LfN;

    invoke-direct {v0, p1}, LfN;-><init>(I)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$SimWatchControlsAvailabilityChecker;->a:LfN;

    .line 276
    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$SimWatchControlsAvailabilityChecker;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 280
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$SimWatchControlsAvailabilityChecker;->a:LfN;

    invoke-virtual {v0}, LfN;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
