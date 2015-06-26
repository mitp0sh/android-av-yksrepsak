.class public final LlA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, LlA;->a:Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, LlA;->a:Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;

    invoke-virtual {v0}, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;->finish()V

    .line 30
    return-void
.end method
