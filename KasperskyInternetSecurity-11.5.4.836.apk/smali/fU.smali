.class public final LfU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/wizard/WizardFragment;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/gui/wizard/WizardFragment;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, LfU;->a:Lcom/kaspersky/kts/gui/wizard/WizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->D()Lbb;

    move-result-object v0

    invoke-static {}, Lqy;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbb;->sendRestoreCode(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->C()LaV;

    move-result-object v0

    .line 180
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v1

    invoke-virtual {v1, v0}, LcW;->a(LaU;)V

    .line 181
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AntiThiefEnabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->newEvent()LcT;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 182
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->i(Z)V

    .line 183
    return-void
.end method
