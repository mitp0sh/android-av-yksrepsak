.class Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder$1;
.super Ljava/lang/Object;
.source "ModelBuilder.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;)V
    .locals 0

    .prologue
    .line 136
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder$1;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder.1;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder$1;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V
    .locals 1
    .param p1, "e"    # Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    .prologue
    .line 138
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder$1;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder.1;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder$1;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 139
    return-void
.end method
