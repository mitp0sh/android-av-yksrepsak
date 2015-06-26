.class final Loi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loj;


# instance fields
.field private synthetic a:Loh;


# direct methods
.method constructor <init>(Loh;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Loi;->a:Loh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    iget-object v1, p0, Loi;->a:Loh;

    invoke-static {v1}, Loh;->a(Loh;)Lcom/kms/UiEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 27
    return-void
.end method

.method public final a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
