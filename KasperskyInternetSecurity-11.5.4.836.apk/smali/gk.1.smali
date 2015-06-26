.class final Lgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lgj;


# direct methods
.method constructor <init>(Lgj;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lgk;->a:Lgj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lgk;->a:Lgj;

    iget-object v0, v0, Lgj;->b:Lgi;

    invoke-static {v0}, Lgi;->a(Lgi;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lgk;->a:Lgj;

    iget-object v1, v1, Lgj;->a:Lgl;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 305
    iget-object v1, p0, Lgk;->a:Lgj;

    iget-object v1, v1, Lgj;->b:Lgi;

    invoke-static {v1}, Lgi;->b(Lgi;)Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->a(ZI)V

    .line 306
    return-void
.end method
