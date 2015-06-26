.class public final LfT;
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
    .line 148
    iput-object p1, p0, LfT;->a:Lcom/kaspersky/kts/gui/wizard/WizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, LoT;

    invoke-direct {v0}, LoT;-><init>()V

    invoke-virtual {v0}, LoT;->a()V

    .line 152
    return-void
.end method
