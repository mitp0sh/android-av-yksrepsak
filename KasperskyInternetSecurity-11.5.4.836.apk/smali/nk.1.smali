.class final Lnk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lnj;


# direct methods
.method constructor <init>(Lnj;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lnk;->a:Lnj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lnk;->a:Lnj;

    invoke-virtual {v0}, Lnj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 33
    return-void
.end method
