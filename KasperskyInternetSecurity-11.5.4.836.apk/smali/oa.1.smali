.class public final Loa;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Loa;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Loa;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Loa;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 78
    :cond_0
    return-void
.end method
