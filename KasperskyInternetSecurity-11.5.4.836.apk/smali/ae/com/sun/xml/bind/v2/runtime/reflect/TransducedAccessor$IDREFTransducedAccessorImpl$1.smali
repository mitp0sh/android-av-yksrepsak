.class Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;
.super Ljava/lang/Object;
.source "TransducedAccessor.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;->parse(Ljava/lang/Object;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;

.field final synthetic val$bean:Ljava/lang/Object;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

.field final synthetic val$idref:Ljava/lang/String;

.field final synthetic val$loc:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;Ljava/util/concurrent/Callable;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;)V
    .locals 0

    .prologue
    .line 334
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl.1;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;->val$callable:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;->val$context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    iput-object p4, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;->val$bean:Ljava/lang/Object;

    iput-object p5, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;->val$idref:Ljava/lang/String;

    iput-object p6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;->val$loc:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl.1;"
    :try_start_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    .line 338
    .local v1, "t":Ljava/lang/Object;, "TTargetT;"
    if-nez v1, :cond_0

    .line 339
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;->val$context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;->val$bean:Ljava/lang/Object;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;->val$idref:Ljava/lang/String;

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;->val$loc:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    invoke-virtual {v2, v3, v4, v5}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->errorUnresolvedIDREF(Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;)V

    .line 352
    .end local v1    # "t":Ljava/lang/Object;, "TTargetT;"
    :goto_0
    return-void

    .line 341
    .restart local v1    # "t":Ljava/lang/Object;, "TTargetT;"
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;->val$bean:Ljava/lang/Object;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;->val$context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    # invokes: Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;->assign(Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)V
    invoke-static {v2, v3, v1, v4}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;->access$000(Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 343
    .end local v1    # "t":Ljava/lang/Object;, "TTargetT;"
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Lae/com/sun/xml/bind/api/AccessorException;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;->val$context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v2, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 345
    .end local v0    # "e":Lae/com/sun/xml/bind/api/AccessorException;
    :catch_1
    move-exception v0

    .line 346
    .local v0, "e":Lorg/xml/sax/SAXException;
    throw v0

    .line 347
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 349
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sun/istack/SAXException2;

    invoke-direct {v2, v0}, Lcom/sun/istack/SAXException2;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method
