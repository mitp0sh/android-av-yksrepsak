.class final LnC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:LnB;


# direct methods
.method constructor <init>(LnB;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, LnC;->a:LnB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, LnC;->a:LnB;

    invoke-virtual {v0}, LnB;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lwh;->a(Landroid/app/Activity;I)V

    .line 42
    return-void
.end method
