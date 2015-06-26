.class public final Lft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lft;->a:Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lft;->a:Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->a(Landroid/content/Context;Z)V

    .line 36
    return-void
.end method
