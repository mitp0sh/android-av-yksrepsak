.class public final LlH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, LlH;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, LlH;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->finish()V

    .line 174
    return-void
.end method
