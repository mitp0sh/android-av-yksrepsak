.class final Lkj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lki;


# direct methods
.method constructor <init>(Lki;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lkj;->a:Lki;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lkj;->a:Lki;

    invoke-virtual {v0}, Lki;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->f(Landroid/content/Context;)V

    .line 57
    return-void
.end method
