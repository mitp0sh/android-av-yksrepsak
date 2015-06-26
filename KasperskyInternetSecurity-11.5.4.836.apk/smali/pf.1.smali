.class final Lpf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lps;

.field private synthetic b:Lpe;


# direct methods
.method constructor <init>(Lpe;Lps;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lpf;->b:Lpe;

    iput-object p2, p0, Lpf;->a:Lps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, LjJ;->f()LpA;

    move-result-object v0

    iget-object v1, p0, Lpf;->a:Lps;

    invoke-interface {v0, v1}, LpA;->a(Lps;)Lps;

    .line 95
    return-void
.end method
